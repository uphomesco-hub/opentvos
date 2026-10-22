package com.sid.tvos;

import android.app.usage.UsageStats;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g0 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Recents.lambda$fromUsageStats$0((UsageStats) obj, (UsageStats) obj2);
    }
}
