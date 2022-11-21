.class public final Lr4/qu;
.super Lr4/xu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/xu<",
        "Lr4/vv;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lr4/yt;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lr4/fb0;

.field public final synthetic f:Lr4/wu;


# direct methods
.method public constructor <init>(Lr4/wu;Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/fb0;)V
    .locals 0

    iput-object p1, p0, Lr4/qu;->f:Lr4/wu;

    iput-object p2, p0, Lr4/qu;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/qu;->c:Lr4/yt;

    iput-object p4, p0, Lr4/qu;->d:Ljava/lang/String;

    iput-object p5, p0, Lr4/qu;->e:Lr4/fb0;

    invoke-direct {p0}, Lr4/xu;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/qu;->b:Landroid/content/Context;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Lr4/wu;->g(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lr4/my;

    invoke-direct {v0}, Lr4/my;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/qu;->f:Lr4/wu;

    invoke-static {v0}, Lr4/wu;->a(Lr4/wu;)Lr4/st;

    move-result-object v1

    iget-object v2, p0, Lr4/qu;->b:Landroid/content/Context;

    iget-object v3, p0, Lr4/qu;->c:Lr4/yt;

    iget-object v4, p0, Lr4/qu;->d:Ljava/lang/String;

    iget-object v5, p0, Lr4/qu;->e:Lr4/fb0;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lr4/st;->c(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/fw;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/qu;->b:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v2

    iget-object v3, p0, Lr4/qu;->c:Lr4/yt;

    iget-object v4, p0, Lr4/qu;->d:Ljava/lang/String;

    iget-object v5, p0, Lr4/qu;->e:Lr4/fb0;

    const v6, 0xcbe6bb0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lr4/fw;->K4(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;

    move-result-object p1

    return-object p1
.end method
