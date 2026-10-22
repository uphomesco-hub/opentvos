package io.freemytv;

import android.graphics.*;
import android.text.*;
import java.util.*;

/** App-scoped, centred top shelf. Keeps sharp art separate from the intentionally blurred background. */
final class ContinueRow {
    private static final float WIDTH=1000, HEIGHT=500, STEP=1040, CY=492;
    private List<ContinueWatching.Item> items=Collections.emptyList();
    private final Paint fill=new Paint(3), image=new Paint(3), stroke=new Paint(3), shade=new Paint(3);
    private final RectF rect=new RectF(), art=new RectF();
    private final Matrix matrix=new Matrix();
    private final Spring position=new Spring(0.30f,0.88f,0);
    private Paint title, subtitle, emptyTitle, hint;
    private BitmapShader[] shaders={};
    private Shader scrim;
    private String[] titles={}, subtitles={};
    private String app="";
    private float k;
    private int selected;
    int count(){return items.size();}
    ContinueWatching.Item item(int i){return items.get(i);}
    void update(float scale){update(scale,app);}
    void update(float scale,String pkg){
        boolean changed=!Objects.equals(app,pkg); app=pkg==null?"":pkg;k=scale;
        items=ContinueWatching.forApp(app);
        selected=Math.min(selected,Math.max(0,items.size()-1));
        if(changed)position.snap(selected=0);
        scrim=new LinearGradient(0,(CY+HEIGHT/2-170)*k,0,(CY+HEIGHT/2)*k,0x00000000,0xE8000000,Shader.TileMode.CLAMP);
        title=Ui.text(Ui.semibold,37*k,Color.WHITE);
        subtitle=Ui.text(Ui.medium,25*k,0xE8FFFFFF);
        emptyTitle=Ui.text(Ui.displaySemibold,42*k,Color.WHITE);
        hint=Ui.text(Ui.medium,25*k,0xD9FFFFFF);
        titles=new String[items.size()];subtitles=new String[items.size()];shaders=new BitmapShader[items.size()];
        TextPaint fit=new TextPaint(title);
        for(int i=0;i<items.size();i++){
            ContinueWatching.Item item=items.get(i);
            titles[i]=TextUtils.ellipsize(item.title==null?"":item.title,fit,(WIDTH-68)*k,TextUtils.TruncateAt.END).toString();
            fit.set(subtitle);subtitles[i]=TextUtils.ellipsize(item.subtitle==null?"":item.subtitle,fit,(WIDTH-68)*k,TextUtils.TruncateAt.END).toString();fit.set(title);
            if(item.art!=null&&!item.art.isRecycled())shaders[i]=new BitmapShader(item.art,Shader.TileMode.CLAMP,Shader.TileMode.CLAMP);
        }
    }
    void select(int index,boolean snap){selected=Math.max(0,Math.min(index,Math.max(0,count()-1)));position.target=selected;if(snap)position.snap(selected);}
    boolean step(float dt){return position.step(dt);}
    float center(int i){return (960+(i-position.value)*STEP)*k;}
    void bounds(int i,RectF out){float cx=center(i);out.set(cx-WIDTH*k/2,(CY-HEIGHT/2)*k,cx+WIDTH*k/2,(CY+HEIGHT/2)*k);}
    void draw(Canvas c,boolean dark,int focused){
        if(title==null)return;
        if(items.isEmpty()){drawEmpty(c,dark);return;}
        int first=Math.max(0,(int)Math.floor(position.value)-1),last=Math.min(items.size()-1,(int)Math.ceil(position.value)+1);
        for(int i=first;i<=last;i++)if(i!=selected)drawCard(c,i,dark,false);
        if(selected>=first&&selected<=last)drawCard(c,selected,dark,focused==selected);
        if(items.size()>1){
            float total=(items.size()-1)*16*k,x=960*k-total/2;
            for(int i=0;i<items.size();i++){fill.setShader(null);fill.setColor(i==selected?(dark?0xFFFFFFFF:0xFF303038):(dark?0x66FFFFFF:0x66303038));c.drawCircle(x+i*16*k,780*k,(i==selected?4:3)*k,fill);}
        }
    }
    private void drawCard(Canvas c,int i,boolean dark,boolean focused){
        bounds(i,rect);if(rect.right<0||rect.left>1920*k)return;
        c.save();float zoom=i==selected?(focused?1.025f:1f):0.92f;c.scale(zoom,zoom,rect.centerX(),rect.centerY());
        float radius=28*k;
        fill.setShader(null);fill.setColor(dark?0xF02A2B32:0xED4A4D58);c.drawRoundRect(rect,radius,radius,fill);
        ContinueWatching.Item it=items.get(i);
        if(shaders[i]!=null&&it.art!=null&&!it.art.isRecycled()){
            Bitmap bitmap=it.art;float cover=Math.max(rect.width()/bitmap.getWidth(),rect.height()/bitmap.getHeight());
            if(cover<=1.15f){
                matrix.setScale(cover,cover);matrix.postTranslate(rect.centerX()-bitmap.getWidth()*cover/2,rect.centerY()-bitmap.getHeight()*cover/2);
                shaders[i].setLocalMatrix(matrix);image.setShader(shaders[i]);c.drawRoundRect(rect,radius,radius,image);
            }else{
                // Original thumbnails retain their detail: never stretch a 240px image across a 1000px hero.
                float fit=Math.min(1.15f,Math.min((rect.width()-60*k)/bitmap.getWidth(),(rect.height()-135*k)/bitmap.getHeight()));
                float w=bitmap.getWidth()*fit,h=bitmap.getHeight()*fit;
                art.set(rect.centerX()-w/2,rect.top+28*k+(rect.height()-135*k-h)/2,rect.centerX()+w/2,rect.top+28*k+(rect.height()-135*k+h)/2);
                matrix.setScale(fit,fit);matrix.postTranslate(art.left,art.top);shaders[i].setLocalMatrix(matrix);image.setShader(shaders[i]);c.drawRoundRect(art,16*k,16*k,image);
            }
            image.setShader(null);
        }
        // Shared vertical scrim is cached outside drawing; carousel movement is horizontal.
        shade.setShader(scrim);
        c.drawRoundRect(rect,radius,radius,shade);shade.setShader(null);
        c.drawText(titles[i],rect.left+34*k,rect.bottom-86*k,title);
        c.drawText(subtitles[i],rect.left+34*k,rect.bottom-46*k,subtitle);
        if(it.duration>0&&it.position>0){
            art.set(rect.left+34*k,rect.bottom-23*k,rect.right-34*k,rect.bottom-18*k);
            fill.setColor(0x55FFFFFF);c.drawRoundRect(art,3*k,3*k,fill);art.right=art.left+art.width()*Math.max(0,Math.min(1,it.position/(float)it.duration));fill.setColor(0xFFFFFFFF);c.drawRoundRect(art,3*k,3*k,fill);
        }
        if(i!=selected){fill.setColor(dark?0x42000000:0x30000000);c.drawRoundRect(rect,radius,radius,fill);}
        stroke.setStyle(Paint.Style.STROKE);stroke.setStrokeWidth((focused?4:1.5f)*k);stroke.setColor(focused?0xF5FFFFFF:0x65FFFFFF);c.drawRoundRect(rect,radius,radius,stroke);c.restore();
    }
    private void drawEmpty(Canvas c,boolean dark){
        rect.set(460*k,242*k,1460*k,742*k);fill.setShader(null);fill.setColor(dark?0x782B2B32:0x91FFFFFF);c.drawRoundRect(rect,28*k,28*k,fill);
        emptyTitle.setColor(dark?0xFFF5F5F7:0xFF303038);hint.setColor(dark?0xCCFFFFFF:0xFF666670);
        String text="No shared viewing history yet";c.drawText(text,960*k-emptyTitle.measureText(text)/2,470*k,emptyTitle);
        text="Watch a title in this app, then return Home.";c.drawText(text,960*k-hint.measureText(text)/2,520*k,hint);
    }
}
