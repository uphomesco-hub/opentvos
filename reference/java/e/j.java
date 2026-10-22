package e;

import android.content.res.Resources;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources.Theme f386b;

    public j(Resources resources, Resources.Theme theme) {
        this.f385a = resources;
        this.f386b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f385a.equals(jVar.f385a) && Objects.equals(this.f386b, jVar.f386b);
    }

    public final int hashCode() {
        return Objects.hash(this.f385a, this.f386b);
    }
}
