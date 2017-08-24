package project38.api.common.enums;

/**
 * Created by Administrator on 2017/6/21.
 */
public enum PlayGroupIdEnum {
    CQSSC(1L, "重庆时时彩", "cqssc", true),
    TJSSC(2L, "天津时时彩", "tjssc", true),
    XJSSC(3L, "新疆时时彩", "xjssc", true),
    PL3(4L, "体彩排列3", "pl3", false),
    FC3D(5L, "福彩3D", "fc3d", false),
    LHC(6L, "六合彩", "lhc", false),
    bj28(7L, "北京28", "bj28", false),
    KL8(8L, "北京快乐8", "kl8", false),
    PK10(9L, "北京PK10", "pk10", true),
    XYNC(10L, "重庆幸运农场", "xync", false),
    KLSF(11L, "广东快乐十分", "klsf", false),
    SSQ(12L, "双色球", "ssq", false),
    SFSSC(13L, "三分时时彩", "sfssc", false),
    XYFT(14L, "幸运飞艇", "xyft", false),
    FFSSC(15L, "分分时时彩", "ffssc", true),
    EFSSC(16L, "两分时时彩", "efssc", false),
    WFSSC(17L, "五分时时彩", "wfssc", false),
    JSK3(18L, "江苏快3", "jsk3", false),
    HBK3(19L, "湖北快3", "hbk3", false),
    AHK3(20L, "安徽快3", "ahk3", false),
    JLK3(21L, "吉林快3", "jlk3", false),
    SFLHC(22L, "10分六合彩", "sflhc", false),
    JSPK10(23L, "极速PK10", "jspk10", true),
    GD11X5(24L, "广东11选5", "gd11x5", true);


    /**
     * 彩种编码
     */
    private Long id;

    /**
     * 名称
     */
    private String name;

    /**
     * 简称
     */
    private String shortName;

    /**
     * 是否有官方玩法
     */
    private Boolean hasGuanfang;

    PlayGroupIdEnum(Long id, String name, String shortName, Boolean hasGuanfang) {
        this.id = id;
        this.name = name;
        this.shortName = shortName;
        this.hasGuanfang = hasGuanfang;
    }

    public Boolean getHasGuanfang() {
        return hasGuanfang;
    }

    public void setHasGuanfang(Boolean hasGuanfang) {
        this.hasGuanfang = hasGuanfang;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
