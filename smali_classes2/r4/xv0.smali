.class public final Lr4/xv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nt1;


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/String;

.field public final c:Lr4/ow0;

.field public final d:Lr4/zv0;

.field public final e:Lr4/xv0;


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Lr4/zv0;Ljava/lang/Long;Ljava/lang/String;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lr4/xv0;->e:Lr4/xv0;

    iput-object p1, p0, Lr4/xv0;->c:Lr4/ow0;

    iput-object p2, p0, Lr4/xv0;->d:Lr4/zv0;

    iput-object p3, p0, Lr4/xv0;->a:Ljava/lang/Long;

    iput-object p4, p0, Lr4/xv0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lr4/bu1;
    .locals 7

    iget-object v0, p0, Lr4/xv0;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lr4/xv0;->d:Lr4/zv0;

    invoke-static {v0}, Lr4/zv0;->a(Lr4/zv0;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lr4/xv0;->d:Lr4/zv0;

    invoke-static {v0}, Lr4/zv0;->c(Lr4/zv0;)Lr4/qt1;

    move-result-object v4

    iget-object v5, p0, Lr4/xv0;->c:Lr4/ow0;

    iget-object v6, p0, Lr4/xv0;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lr4/cu1;->b(JLandroid/content/Context;Lr4/qt1;Lr4/bu0;Ljava/lang/String;)Lr4/bu1;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lr4/xt1;
    .locals 7

    iget-object v0, p0, Lr4/xv0;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lr4/xv0;->d:Lr4/zv0;

    invoke-static {v0}, Lr4/zv0;->a(Lr4/zv0;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lr4/xv0;->d:Lr4/zv0;

    invoke-static {v0}, Lr4/zv0;->c(Lr4/zv0;)Lr4/qt1;

    move-result-object v4

    iget-object v5, p0, Lr4/xv0;->c:Lr4/ow0;

    iget-object v6, p0, Lr4/xv0;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lr4/yt1;->b(JLandroid/content/Context;Lr4/qt1;Lr4/bu0;Ljava/lang/String;)Lr4/xt1;

    move-result-object v0

    return-object v0
.end method
