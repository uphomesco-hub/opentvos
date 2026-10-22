package com.sid.tvos;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AppAdapter extends androidx.recyclerview.widget.g {
    static boolean calmFocusInProgress = false;
    static boolean calmNextFocus = false;
    static int labelColor = -1;
    private final Context ctx;
    private int dockOffset;
    private List<String> favourites;
    private final Set<String> hidden;
    private final TileListener listener;
    private final List<Entry> items = new ArrayList();
    private final List<Entry> favEntries = new ArrayList();
    private final List<Entry> rest = new ArrayList();
    private final Map<String, String> folderOf = new HashMap();
    private final int dockSlots = MainActivity.COLUMNS;

    public static final class Entry {
        int ambient;
        final Drawable banner;
        final List<Entry> children;
        final ComponentName component;
        final Drawable icon;
        final String label;
        final String pkg;
        int slot;

        public Entry(String str, ComponentName componentName, Drawable drawable, Drawable drawable2) {
            this.slot = -1;
            this.label = str;
            this.component = componentName;
            this.pkg = componentName.getPackageName();
            this.banner = drawable;
            this.icon = drawable2;
            this.children = null;
        }

        public static Entry placeholder(int i2) {
            Entry entry = new Entry("", null);
            entry.slot = i2;
            return entry;
        }

        public boolean isFolder() {
            return this.children != null;
        }

        public boolean isPlaceholder() {
            return this.slot >= 0;
        }

        public String key() {
            if (isPlaceholder()) {
                return "empty:" + this.slot;
            }
            if (!isFolder()) {
                return this.component.flattenToShortString();
            }
            return "folder:" + this.label;
        }

        public Entry(String str, List<Entry> list) {
            this.slot = -1;
            this.label = str;
            this.component = null;
            this.pkg = null;
            this.banner = null;
            this.icon = null;
            this.children = list;
        }
    }

    public static final class Holder extends androidx.recyclerview.widget.o {
        final ImageView banner;
        final View card;
        final View folderGrid;
        final ImageView icon;
        final TextView label;
        final ImageView[] minis;
        final TextView name;

        public Holder(View view, final TileListener tileListener) {
            super(view);
            this.minis = new ImageView[6];
            View viewFindViewById = view.findViewById(R.id.card);
            this.card = viewFindViewById;
            this.banner = (ImageView) view.findViewById(R.id.banner);
            this.icon = (ImageView) view.findViewById(R.id.icon);
            this.label = (TextView) view.findViewById(R.id.label);
            this.name = (TextView) view.findViewById(R.id.name);
            this.folderGrid = view.findViewById(R.id.folderGrid);
            int[] iArr = {R.id.mini0, R.id.mini1, R.id.mini2, R.id.mini3, R.id.mini4, R.id.mini5};
            final float f2 = view.getResources().getDisplayMetrics().density;
            final float f3 = 16.0f * f2;
            viewFindViewById.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.AppAdapter.Holder.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f3);
                }
            });
            viewFindViewById.setClipToOutline(true);
            final float f4 = 4.0f * f2;
            for (int i2 = 0; i2 < 6; i2++) {
                this.minis[i2] = (ImageView) view.findViewById(iArr[i2]);
                this.minis[i2].setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.AppAdapter.Holder.2
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view2, Outline outline) {
                        outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f4);
                    }
                });
                this.minis[i2].setClipToOutline(true);
            }
            this.card.setOnKeyListener(new View.OnKeyListener() { // from class: com.sid.tvos.d
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view2, int i3, KeyEvent keyEvent) {
                    return this.f268a.lambda$new$0(tileListener, view2, i3, keyEvent);
                }
            });
            this.card.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sid.tvos.e
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z2) {
                    this.f274a.lambda$new$1(f2, tileListener, view2, z2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$0(TileListener tileListener, View view, int i2, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 0) {
                return false;
            }
            int bindingAdapterPosition = getBindingAdapterPosition();
            if (tileListener == null || bindingAdapterPosition == -1) {
                return false;
            }
            if (i2 == 19 || i2 == 20) {
                return tileListener.onTileVerticalKey(bindingAdapterPosition, i2);
            }
            if (i2 == 21 || i2 == 22) {
                return tileListener.onTileHorizontalKey(bindingAdapterPosition, i2);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(float f2, TileListener tileListener, View view, boolean z2) {
            long j;
            float f3;
            float f4 = z2 ? 1.13f : 1.0f;
            boolean z3 = AppAdapter.calmNextFocus;
            if (z2) {
                AppAdapter.calmNextFocus = false;
            }
            if (z2) {
                view.setCameraDistance(9000.0f * f2);
                view.setRotationX(7.0f);
            }
            ViewPropertyAnimator viewPropertyAnimatorRotationX = view.animate().scaleX(f4).scaleY(f4).rotationX(0.0f);
            if (z2) {
                j = z3 ? 380L : 300L;
            } else {
                j = 180;
            }
            viewPropertyAnimatorRotationX.setDuration(j).setInterpolator((!z2 || z3) ? new DecelerateInterpolator(2.0f) : new OvershootInterpolator(1.4f)).start();
            ViewPropertyAnimator viewPropertyAnimatorAlpha = this.name.animate().alpha(z2 ? 1.0f : 0.0f);
            if (z2) {
                f3 = 4.0f;
            } else {
                f2 = -f2;
                f3 = 6.0f;
            }
            viewPropertyAnimatorAlpha.translationY(f2 * f3).setDuration(220L).start();
            int bindingAdapterPosition = getBindingAdapterPosition();
            if (!z2 || tileListener == null || bindingAdapterPosition == -1) {
                return;
            }
            AppAdapter.calmFocusInProgress = z3;
            tileListener.onTileFocused(bindingAdapterPosition, view);
            AppAdapter.calmFocusInProgress = false;
        }
    }

    public interface TileListener {
        void onFolderOpen(Entry entry);

        void onLaunch(Entry entry, View view);

        void onTileFocused(int i2, View view);

        boolean onTileHorizontalKey(int i2, int i3);

        void onTileLongPress(Entry entry, View view);

        boolean onTileVerticalKey(int i2, int i3);
    }

    public AppAdapter(Context context, TileListener tileListener) {
        this.ctx = context;
        this.listener = tileListener;
        this.favourites = Favorites.load(context);
        this.hidden = new HashSet(Arrays.asList(context.getResources().getStringArray(R.array.hidden_apps)));
        setHasStableIds(true);
    }

    private void applyTileSize(Holder holder) {
        float f2 = this.ctx.getResources().getDisplayMetrics().density;
        float fTileScale = tileScale(this.ctx);
        int iRound = Math.round(Appearance.ROW_GAP_DP[Appearance.step(this.ctx, "row_gap")] * f2);
        if (holder.itemView.getPaddingTop() != iRound) {
            holder.itemView.setPadding(0, iRound, 0, iRound);
        }
        int iRound2 = Math.round(154.0f * fTileScale * f2);
        int iRound3 = Math.round(92.0f * fTileScale * f2);
        holder.folderGrid.setScaleX(fTileScale);
        holder.folderGrid.setScaleY(fTileScale);
        ViewGroup.LayoutParams layoutParams = holder.card.getLayoutParams();
        if (layoutParams.width == iRound2 && layoutParams.height == iRound3) {
            return;
        }
        layoutParams.width = iRound2;
        layoutParams.height = iRound3;
        holder.card.setLayoutParams(layoutParams);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) holder.name.getLayoutParams();
        marginLayoutParams.width = Math.round(fTileScale * 174.0f * f2);
        marginLayoutParams.topMargin = Math.round(f2 * 14.0f) + iRound3;
        holder.name.setLayoutParams(marginLayoutParams);
    }

    public static int colorOf(Entry entry) {
        if (entry.ambient == 0) {
            Drawable drawable = entry.banner;
            if (drawable == null) {
                drawable = entry.icon;
            }
            entry.ambient = vividColor(drawable);
        }
        return entry.ambient;
    }

    public static Entry entryFor(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LEANBACK_LAUNCHER").setPackage(str), 0);
        if (listQueryIntentActivities.isEmpty() || listQueryIntentActivities.get(0).activityInfo == null) {
            return null;
        }
        ResolveInfo resolveInfo = listQueryIntentActivities.get(0);
        Drawable drawableLoadBanner = resolveInfo.activityInfo.loadBanner(packageManager);
        if (drawableLoadBanner == null) {
            drawableLoadBanner = resolveInfo.activityInfo.applicationInfo.loadBanner(packageManager);
        }
        return new Entry(String.valueOf(resolveInfo.loadLabel(packageManager)), new ComponentName(str, resolveInfo.activityInfo.name), drawableLoadBanner, resolveInfo.loadIcon(packageManager));
    }

    public static float itemDp(Context context) {
        return (tileScale(context) * 92.0f) + (Appearance.ROW_GAP_DP[Appearance.step(context, "row_gap")] * 2) + 34;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$1(Entry entry, View view) {
        this.listener.onFolderOpen(entry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$2(Entry entry, View view) {
        this.listener.onLaunch(entry, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onBindViewHolder$3(Entry entry, View view) {
        this.listener.onTileLongPress(entry, view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$reload$0(Entry entry, Entry entry2) {
        int iIndexOf = entry.isFolder() ? -1 : this.favourites.indexOf(entry.pkg);
        int iIndexOf2 = entry2.isFolder() ? -1 : this.favourites.indexOf(entry2.pkg);
        if (iIndexOf < 0 && iIndexOf2 < 0) {
            return entry.label.compareToIgnoreCase(entry2.label);
        }
        if (iIndexOf < 0) {
            return 1;
        }
        if (iIndexOf2 < 0) {
            return -1;
        }
        return Integer.compare(iIndexOf, iIndexOf2);
    }

    private void rebuild() {
        this.items.clear();
        this.items.addAll(this.favEntries.subList(this.dockOffset, Math.min(this.favEntries.size(), this.dockOffset + this.dockSlots)));
        for (int size = this.items.size(); size < this.dockSlots && !this.rest.isEmpty(); size++) {
            this.items.add(Entry.placeholder(size));
        }
        this.items.addAll(this.rest);
    }

    public static void styleLabel(TextView textView) {
        textView.setTextColor(labelColor);
        boolean z2 = labelColor != -1;
        textView.setShadowLayer(z2 ? 0.0f : 2.0f, 0.0f, z2 ? 0.0f : 1.0f, z2 ? 0 : Integer.MIN_VALUE);
    }

    public static float tileScale(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        float fMax = (((Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels) / displayMetrics.density) - 90.0f) / MainActivity.COLUMNS) - 8.0f;
        return Math.min(1.0f, Math.min((2.0f * fMax) / 328.02002f, fMax / 174.02f)) / ((float) Math.pow(1.13d, 2 - Appearance.step(context, "icon_size")));
    }

    private static int vividColor(Drawable drawable) {
        int i2 = -12303292;
        if (drawable == null) {
            return -12303292;
        }
        Drawable drawableMutate = drawable.getConstantState() != null ? drawable.getConstantState().newDrawable().mutate() : drawable;
        Rect rect = new Rect(drawableMutate.getBounds());
        int i3 = 12;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(12, 12, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int i4 = 0;
        drawableMutate.setBounds(0, 0, 12, 12);
        drawableMutate.draw(canvas);
        drawableMutate.setBounds(rect);
        float[] fArr = new float[3];
        long jRed = 0;
        float f2 = -1.0f;
        long jGreen = 0;
        long jBlue = 0;
        int i5 = 0;
        while (i5 < i3) {
            while (i4 < i3) {
                int pixel = bitmapCreateBitmap.getPixel(i4, i5);
                jRed += (long) Color.red(pixel);
                jGreen += (long) Color.green(pixel);
                jBlue += (long) Color.blue(pixel);
                Color.colorToHSV(pixel, fArr);
                float fMin = Math.min(1.0f, fArr[2] * 1.4f) * fArr[1];
                if (fMin > f2) {
                    i2 = pixel;
                    f2 = fMin;
                }
                i4++;
                i3 = 12;
            }
            i5++;
            i3 = 12;
            i4 = 0;
        }
        bitmapCreateBitmap.recycle();
        if (f2 < 0.25f) {
            long j = 144;
            Color.colorToHSV(Color.rgb((int) (jRed / j), (int) (jGreen / j), (int) (jBlue / j)), fArr);
            fArr[2] = Math.max(fArr[2], 0.55f);
        } else {
            Color.colorToHSV(i2, fArr);
            fArr[1] = Math.min(1.0f, fArr[1] * 1.1f);
            fArr[2] = Math.max(0.5f, fArr[2]);
        }
        return Color.HSVToColor(fArr);
    }

    public List<Entry> allEntries() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry : this.items) {
            if (entry.isFolder()) {
                arrayList.addAll(entry.children);
            } else {
                arrayList.add(entry);
            }
        }
        return arrayList;
    }

    public int ambientColorAt(int i2) {
        if (i2 < 0 || i2 >= this.items.size()) {
            return -12303292;
        }
        return colorOf(this.items.get(i2));
    }

    public int dockShown() {
        return Math.max(0, Math.min(this.dockSlots, this.favEntries.size() - this.dockOffset));
    }

    public Entry entryAt(int i2) {
        if (i2 < 0 || i2 >= this.items.size()) {
            return null;
        }
        return this.items.get(i2);
    }

    public int favouriteIndexAt(int i2) {
        Entry entryEntryAt = entryAt(i2);
        if (entryEntryAt == null || i2 >= this.dockSlots) {
            return -1;
        }
        return this.favEntries.indexOf(entryEntryAt);
    }

    public List<Entry> firstEntries(int i2) {
        List<Entry> list = this.items;
        return new ArrayList(list.subList(0, Math.min(i2, list.size())));
    }

    public String folderOf(String str) {
        return this.folderOf.get(str);
    }

    @Override // androidx.recyclerview.widget.g
    public int getItemCount() {
        return this.items.size();
    }

    @Override // androidx.recyclerview.widget.g
    public long getItemId(int i2) {
        return this.items.get(i2).key().hashCode();
    }

    public boolean isFavorite(String str) {
        return this.favourites.contains(str);
    }

    public String keyAt(int i2) {
        if (i2 < 0 || i2 >= this.items.size()) {
            return null;
        }
        return this.items.get(i2).key();
    }

    public int positionOf(String str) {
        if (str == null) {
            return -1;
        }
        for (int i2 = 0; i2 < this.items.size(); i2++) {
            if (this.items.get(i2).key().equals(str)) {
                return i2;
            }
        }
        return -1;
    }

    public void prewarmShelves(int i2) {
        for (int i3 = 0; i3 < Math.min(i2, this.items.size()); i3++) {
            Entry entry = this.items.get(i3);
            if (!entry.isPlaceholder() && !entry.isFolder() && Stage.peek(entry) == null) {
                Stage.renderAsync(this.ctx, entry, ambientColorAt(i3), null);
            }
        }
    }

    public void reload() {
        this.favourites = Favorites.load(this.ctx);
        PackageManager packageManager = this.ctx.getPackageManager();
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LEANBACK_LAUNCHER"), 0);
        HashMap map = new HashMap();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (activityInfo != null) {
                String str = activityInfo.packageName;
                if (!str.equals(this.ctx.getPackageName()) && !this.hidden.contains(str) && !map.containsKey(str)) {
                    Drawable drawableLoadBanner = resolveInfo.activityInfo.loadBanner(packageManager);
                    if (drawableLoadBanner == null) {
                        drawableLoadBanner = resolveInfo.activityInfo.applicationInfo.loadBanner(packageManager);
                    }
                    map.put(str, new Entry(String.valueOf(resolveInfo.loadLabel(packageManager)), new ComponentName(str, resolveInfo.activityInfo.name), drawableLoadBanner, resolveInfo.loadIcon(packageManager)));
                }
            }
        }
        ArrayList<Entry> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.folderOf.clear();
        for (Map.Entry<String, List<String>> entry : Folders.load(this.ctx).entrySet()) {
            ArrayList arrayList3 = new ArrayList();
            for (String str2 : entry.getValue()) {
                Entry entry2 = (Entry) map.get(str2);
                if (entry2 != null && !this.favourites.contains(str2)) {
                    arrayList3.add(entry2);
                    map.remove(str2);
                    this.folderOf.put(str2, entry.getKey());
                }
            }
            if (!arrayList3.isEmpty()) {
                arrayList2.add(new Entry(entry.getKey(), arrayList3));
            }
        }
        arrayList.addAll(map.values());
        arrayList.addAll(arrayList2);
        Collections.sort(arrayList, new Comparator() { // from class: com.sid.tvos.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return this.f249a.lambda$reload$0((AppAdapter.Entry) obj, (AppAdapter.Entry) obj2);
            }
        });
        this.favEntries.clear();
        this.rest.clear();
        for (Entry entry3 : arrayList) {
            ((entry3.isFolder() || !this.favourites.contains(entry3.pkg)) ? this.rest : this.favEntries).add(entry3);
        }
        this.dockOffset = Math.max(0, Math.min(this.dockOffset, this.favEntries.size() - this.dockSlots));
        rebuild();
        notifyDataSetChanged();
    }

    public void setEntries(List<Entry> list) {
        this.items.clear();
        this.items.addAll(list);
        notifyDataSetChanged();
    }

    public Bitmap shelfAt(int i2) {
        if (i2 < 0 || i2 >= this.items.size()) {
            return null;
        }
        return Stage.render(this.ctx, this.items.get(i2), ambientColorAt(i2));
    }

    public Bitmap shelfReady(int i2, Stage.Callback callback) {
        if (i2 < 0 || i2 >= this.items.size()) {
            return null;
        }
        Entry entry = this.items.get(i2);
        Bitmap bitmapPeek = Stage.peek(entry);
        if (bitmapPeek == null) {
            Stage.renderAsync(this.ctx, entry, ambientColorAt(i2), callback);
        }
        return bitmapPeek;
    }

    public boolean shiftDock(int i2) {
        int i3 = this.dockOffset + i2;
        if (i3 < 0 || i3 > this.favEntries.size() - this.dockSlots) {
            return false;
        }
        this.dockOffset = i3;
        rebuild();
        notifyItemRangeChanged(0, this.dockSlots);
        return true;
    }

    public void showFavourite(int i2) {
        int i3 = this.dockOffset;
        if (i2 >= i3) {
            int i4 = this.dockSlots;
            i2 = i2 >= i3 + i4 ? (i2 - i4) + 1 : i3;
        }
        int iMax = Math.max(0, Math.min(i2, Math.max(0, this.favEntries.size() - this.dockSlots)));
        if (iMax == this.dockOffset) {
            return;
        }
        this.dockOffset = iMax;
        rebuild();
        notifyItemRangeChanged(0, this.dockSlots);
    }

    @Override // androidx.recyclerview.widget.g
    public void onBindViewHolder(Holder holder, int i2) {
        View view;
        ViewOnClickListenerC0001b viewOnClickListenerC0001b;
        final Entry entry = this.items.get(i2);
        holder.name.setText(entry.label);
        styleLabel(holder.name);
        applyTileSize(holder);
        boolean zIsFocused = holder.card.isFocused();
        holder.name.setAlpha(zIsFocused ? 1.0f : 0.0f);
        holder.card.setScaleX(zIsFocused ? 1.13f : 1.0f);
        holder.card.setScaleY(zIsFocused ? 1.13f : 1.0f);
        holder.card.setVisibility(entry.isPlaceholder() ? 4 : 0);
        holder.card.setFocusable(!entry.isPlaceholder());
        if (entry.isPlaceholder()) {
            holder.name.setText("");
            holder.card.setOnClickListener(null);
            holder.card.setOnLongClickListener(null);
            return;
        }
        if (entry.isFolder()) {
            holder.card.setBackgroundResource(R.drawable.folder_bg);
            holder.banner.setVisibility(8);
            holder.icon.setVisibility(8);
            holder.label.setVisibility(8);
            holder.folderGrid.setVisibility(0);
            for (int i3 = 0; i3 < 6; i3++) {
                ImageView imageView = holder.minis[i3];
                if (i3 < entry.children.size()) {
                    Entry entry2 = entry.children.get(i3);
                    Bitmap bitmapTile = IconPack.tile(this.ctx, entry2);
                    if (bitmapTile != null) {
                        imageView.setImageBitmap(bitmapTile);
                    } else {
                        Drawable drawable = entry2.banner;
                        if (drawable == null) {
                            drawable = entry2.icon;
                        }
                        imageView.setImageDrawable(drawable);
                    }
                    imageView.setVisibility(0);
                } else {
                    imageView.setImageDrawable(null);
                    imageView.setVisibility(4);
                }
            }
            view = holder.card;
            viewOnClickListenerC0001b = new ViewOnClickListenerC0001b(this, entry, 0);
        } else {
            holder.card.setBackgroundResource(R.drawable.tile_bg);
            holder.folderGrid.setVisibility(8);
            Bitmap bitmapTile2 = IconPack.tile(this.ctx, entry);
            if (bitmapTile2 != null) {
                bitmapTile2.prepareToDraw();
                holder.banner.setImageBitmap(bitmapTile2);
            } else {
                Drawable drawable2 = entry.banner;
                if (drawable2 != null) {
                    holder.banner.setImageDrawable(drawable2);
                } else {
                    holder.banner.setImageDrawable(null);
                    holder.banner.setVisibility(8);
                    holder.icon.setImageDrawable(entry.icon);
                    holder.icon.setVisibility(0);
                    holder.label.setText(entry.label);
                    holder.label.setVisibility(0);
                }
                view = holder.card;
                viewOnClickListenerC0001b = new ViewOnClickListenerC0001b(this, entry, 1);
            }
            holder.banner.setVisibility(0);
            holder.icon.setVisibility(8);
            holder.label.setVisibility(8);
            view = holder.card;
            viewOnClickListenerC0001b = new ViewOnClickListenerC0001b(this, entry, 1);
        }
        view.setOnClickListener(viewOnClickListenerC0001b);
        holder.card.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sid.tvos.c
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return this.f257a.lambda$onBindViewHolder$3(entry, view2);
            }
        });
    }

    @Override // androidx.recyclerview.widget.g
    public Holder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new Holder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_app, viewGroup, false), this.listener);
    }
}
