.class public final Lr4/rp1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/os0;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/u;

.field public final d:Lr4/r00;

.field public final e:Lr4/im0;

.field public final f:Lz2/a;

.field public final g:Lr4/ip;

.field public final h:Lr4/aa1;


# direct methods
.method public constructor <init>(Lr4/os0;Landroid/content/Context;Lr4/u;Lr4/r00;Lr4/im0;Lz2/a;Lr4/ip;Lr4/aa1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rp1;->a:Lr4/os0;

    iput-object p2, p0, Lr4/rp1;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/rp1;->c:Lr4/u;

    iput-object p4, p0, Lr4/rp1;->d:Lr4/r00;

    iput-object p5, p0, Lr4/rp1;->e:Lr4/im0;

    iput-object p6, p0, Lr4/rp1;->f:Lz2/a;

    iput-object p7, p0, Lr4/rp1;->g:Lr4/ip;

    iput-object p8, p0, Lr4/rp1;->h:Lr4/aa1;

    return-void
.end method

.method public static synthetic a(Lr4/rp1;)Lr4/aa1;
    .locals 0

    iget-object p0, p0, Lr4/rp1;->h:Lr4/aa1;

    return-object p0
.end method


# virtual methods
.method public final b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lr4/rp1;->b:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lr4/vt0;->a(Lr4/yt;)Lr4/vt0;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v3, v3, Lr4/yt;->a:Ljava/lang/String;

    iget-object v6, v0, Lr4/rp1;->c:Lr4/u;

    iget-object v7, v0, Lr4/rp1;->d:Lr4/r00;

    iget-object v8, v0, Lr4/rp1;->e:Lr4/im0;

    new-instance v10, Lr4/gp1;

    invoke-direct {v10, p0}, Lr4/gp1;-><init>(Lr4/rp1;)V

    iget-object v11, v0, Lr4/rp1;->f:Lz2/a;

    iget-object v12, v0, Lr4/rp1;->g:Lr4/ip;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {v1 .. v14}, Lr4/os0;->a(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v1

    return-object v1
.end method
