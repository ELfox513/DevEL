.class public final synthetic Lr4/ks0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d73;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/u;

.field public final c:Lr4/im0;

.field public final d:Lz2/a;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/u;Lr4/im0;Lz2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ks0;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/ks0;->b:Lr4/u;

    iput-object p3, p0, Lr4/ks0;->c:Lr4/im0;

    iput-object p4, p0, Lr4/ks0;->d:Lz2/a;

    iput-object p5, p0, Lr4/ks0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 15

    iget-object v0, p0, Lr4/ks0;->a:Landroid/content/Context;

    iget-object v5, p0, Lr4/ks0;->b:Lr4/u;

    iget-object v7, p0, Lr4/ks0;->c:Lr4/im0;

    iget-object v10, p0, Lr4/ks0;->d:Lz2/a;

    iget-object v14, p0, Lr4/ks0;->e:Ljava/lang/String;

    invoke-static {}, Lz2/t;->e()Lr4/os0;

    invoke-static {}, Lr4/vt0;->b()Lr4/vt0;

    move-result-object v1

    invoke-static {}, Lr4/ip;->a()Lr4/ip;

    move-result-object v11

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lr4/os0;->a(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v0

    invoke-static {v0}, Lr4/um0;->g(Ljava/lang/Object;)Lr4/um0;

    move-result-object v1

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v2

    new-instance v3, Lr4/ms0;

    invoke-direct {v3, v1}, Lr4/ms0;-><init>(Lr4/um0;)V

    invoke-interface {v2, v3}, Lr4/st0;->s0(Lr4/qt0;)V

    invoke-interface {v0, v14}, Lr4/cs0;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
