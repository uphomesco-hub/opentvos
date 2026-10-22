package n;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static String a(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static /* synthetic */ void b(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }
}
