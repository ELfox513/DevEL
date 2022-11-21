.class public final synthetic Lr4/ls0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m13;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/vt0;

.field public final d:Ljava/lang/String;

.field public final k:Z

.field public final p:Z

.field public final q:Lr4/u;

.field public final r:Lr4/r00;

.field public final s:Lr4/im0;

.field public final t:Lz2/l;

.field public final u:Lz2/a;

.field public final v:Lr4/ip;

.field public final w:Lr4/no2;

.field public final x:Lr4/so2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ls0;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/ls0;->b:Lr4/vt0;

    iput-object p3, p0, Lr4/ls0;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lr4/ls0;->k:Z

    iput-boolean p5, p0, Lr4/ls0;->p:Z

    iput-object p6, p0, Lr4/ls0;->q:Lr4/u;

    iput-object p7, p0, Lr4/ls0;->r:Lr4/r00;

    iput-object p8, p0, Lr4/ls0;->s:Lr4/im0;

    iput-object p10, p0, Lr4/ls0;->t:Lz2/l;

    iput-object p11, p0, Lr4/ls0;->u:Lz2/a;

    iput-object p12, p0, Lr4/ls0;->v:Lr4/ip;

    iput-object p13, p0, Lr4/ls0;->w:Lr4/no2;

    iput-object p14, p0, Lr4/ls0;->x:Lr4/so2;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lr4/ls0;->a:Landroid/content/Context;

    iget-object v4, v1, Lr4/ls0;->b:Lr4/vt0;

    iget-object v5, v1, Lr4/ls0;->d:Ljava/lang/String;

    iget-boolean v6, v1, Lr4/ls0;->k:Z

    iget-boolean v15, v1, Lr4/ls0;->p:Z

    iget-object v8, v1, Lr4/ls0;->q:Lr4/u;

    iget-object v9, v1, Lr4/ls0;->r:Lr4/r00;

    iget-object v10, v1, Lr4/ls0;->s:Lr4/im0;

    iget-object v12, v1, Lr4/ls0;->t:Lz2/l;

    iget-object v13, v1, Lr4/ls0;->u:Lz2/a;

    iget-object v14, v1, Lr4/ls0;->v:Lr4/ip;

    iget-object v11, v1, Lr4/ls0;->w:Lr4/no2;

    iget-object v7, v1, Lr4/ls0;->x:Lr4/so2;

    const/16 v2, 0x108

    :try_start_0
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v3, Lr4/ss0;

    sget v2, Lr4/xs0;->l0:I

    new-instance v2, Lr4/ut0;

    invoke-direct {v2, v0}, Lr4/ut0;-><init>(Landroid/content/Context;)V

    new-instance v0, Lr4/xs0;

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    move v7, v15

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lr4/xs0;-><init>(Lr4/ut0;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)V

    move-object/from16 v2, v18

    invoke-direct {v2, v0}, Lr4/ss0;-><init>(Lr4/cs0;)V

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v0

    move-object/from16 v4, v20

    move/from16 v3, v21

    invoke-virtual {v0, v2, v4, v3}, Lb3/g;->l(Lr4/cs0;Lr4/ip;Z)Lr4/js0;

    move-result-object v0

    invoke-interface {v2, v0}, Lr4/cs0;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lr4/bs0;

    invoke-direct {v0, v2}, Lr4/bs0;-><init>(Lr4/cs0;)V

    invoke-interface {v2, v0}, Lr4/cs0;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0
.end method
