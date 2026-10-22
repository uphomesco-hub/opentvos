package r;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final D f549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ D[] f550b;

    static {
        D d2 = new D("ALLOW", 0);
        f549a = d2;
        f550b = new D[]{d2, new D("PREVENT_WHEN_EMPTY", 1), new D("PREVENT", 2)};
    }

    public static D valueOf(String str) {
        return (D) Enum.valueOf(D.class, str);
    }

    public static D[] values() {
        return (D[]) f550b.clone();
    }
}
