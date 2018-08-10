import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;

public class Floppy {
    enum MAGNETIC_HEAD {
        MAGNETIC_HEAD_0,
        MAGNETIC_HEAD_1
    }

    public int SECTOR_SIZE      = 512;
    public int SECTORS_COUNT    = 18;
    public int CYLINDER_COUNT   = 512;

    private MAGNETIC_HEAD magneticHead = MAGNETIC_HEAD.MAGNETIC_HEAD_0;
    private int current_sector      = 0;
    private int current_cylinder    = 0;

    // 一个磁盘两个面
    private HashMap<Integer, ArrayList<ArrayList<byte[]>> > floppy = 
        new HashMap<Integer, ArrayList<ArrayList<byte[]>> >();

    public Floppy() {
        initFloppy();
    }

    private void initFloppy() {
        // 一个磁盘两个面
        floppy.put(MAGNETIC_HEAD.MAGNETIC_HEAD_0.ordinal(), initFloppyDisk());
        floppy.put(MAGNETIC_HEAD.MAGNETIC_HEAD_1.ordinal(), initFloppyDisk());
    }

    private ArrayList<ArrayList<byte[]>> initFloppyDisk() {
        // 磁盘的一个面
        ArrayList<ArrayList<byte[]>> floppyDisk = 
                                    new ArrayList<ArrayList<byte[]>>();
        // 一个磁盘有80柱面
        for (int i = 0; i < CYLINDER_COUNT; ++i) {
            floppyDisk.add(initCylider());
        }
        return floppyDisk;
    }

    private ArrayList<byte[]> initCylider() {
        // 构造一个柱面，一个柱面有18个扇区
        ArrayList<byte[]> cylinder = new ArrayList<byte[]>();
        for (int i = 0; i < SECTORS_COUNT; ++i) {
            byte[] sector = new byte[SECTOR_SIZE];
            cylinder.add(sector);
        } 
        return cylinder;
    }

    public void setMagneticHead(MAGNETIC_HEAD head) {
        magneticHead = head;
    }

    public void setCylinder(int cylinder) {
        if (cylinder < 0) {
            this.current_cylinder = 0;
        } else if (cylinder >= 80) {
            this.current_cylinder = 0;
        } else {
            this.current_cylinder = cylinder;
        }
    }

    public void setSector(int sector) {
        // sector 编号从1到18
        if (sector <= 0) {
            this.current_sector = 0;
        } else if (sector > 18) {
            this.current_sector = 18 - 1;
        } else {
            this.current_sector = sector-1;
        }
    }

    public byte[] readFloppy(MAGNETIC_HEAD head, 
                                int cylinder_num, 
                                int sector_num) {
        setMagneticHead(head);
        setCylinder(cylinder_num);
        setSector(sector_num);

        ArrayList<ArrayList<byte[]>> disk = 
                                    floppy.get(this.magneticHead.ordinal());
        ArrayList<byte[]> cylinder = disk.get(this.current_cylinder);
        byte[] sector = cylinder.get(this.current_sector);
        return sector;
    }

    public void writeFloppy(MAGNETIC_HEAD head,
                            int cylinder_num,
                            int sector_num, 
                            byte[] buf) {
        setMagneticHead(head);
        setCylinder(cylinder_num);
        setSector(sector_num);

        ArrayList<ArrayList<byte[]>> disk = 
                                    floppy.get(this.magneticHead.ordinal());
        ArrayList<byte[]> cylinder = disk.get(this.current_cylinder);
        byte[] buffer = cylinder.get(this.current_sector);
        
        System.arraycopy(buf, 0, buffer, 0, buf.length);
    }

    public void makeFloppy(String fileName) {
        try {
            /*
             * floppy 大小为 2*80*18*512 = 1.5M
             * 先把0 head 512*18这个cylinder写完之后，
             * 再写入 1 head 512*18
             * 0 head 的一个cylinder写满之后在转到 1 head cylinder
             * 这样的两个磁头可以同时读写效率大大提高
             * */
            DataOutputStream out = new DataOutputStream(
                                            new FileOutputStream(fileName));
            // 80 cylinder
            for (int cylinder = 0; cylinder < CYLINDER_COUNT; ++cylinder) {
                // 2 head
                for (int head = 0; 
                        head < MAGNETIC_HEAD.MAGNETIC_HEAD_1.ordinal();
                        head++) {
                    // 18 sector
                    for (int sector = 1; sector <= SECTORS_COUNT; ++sector) {
                        byte[] buf = readFloppy(MAGNETIC_HEAD.values()[head], 
                                                cylinder,
                                                sector);
                        out.write(buf);
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
