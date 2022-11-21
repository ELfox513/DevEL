.class public final Lr4/vu;
.super Lr4/xu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/xu<",
        "Lr4/yh0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lr4/fb0;

.field public final synthetic e:Lr4/wu;


# direct methods
.method public constructor <init>(Lr4/wu;Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)V
    .locals 0

    iput-object p1, p0, Lr4/vu;->e:Lr4/wu;

    iput-object p2, p0, Lr4/vu;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/vu;->c:Ljava/lang/String;

    iput-object p4, p0, Lr4/vu;->d:Lr4/fb0;

    invoke-direct {p0}, Lr4/xu;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/vu;->b:Landroid/content/Context;

    const-string v1, "rewarded"

    invoke-static {v0, v1}, Lr4/wu;->g(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lr4/qy;

    invoke-direct {v0}, Lr4/qy;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/vu;->b:Landroid/content/Context;

    iget-object v1, p0, Lr4/vu;->c:Ljava/lang/String;

    iget-object v2, p0, Lr4/vu;->d:Lr4/fb0;

    invoke-static {v0, v1, v2}, Lr4/li0;->a(Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)Lr4/yh0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/fw;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/vu;->b:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    iget-object v1, p0, Lr4/vu;->c:Ljava/lang/String;

    iget-object v2, p0, Lr4/vu;->d:Lr4/fb0;

    const v3, 0xcbe6bb0

    invoke-interface {p1, v0, v1, v2, v3}, Lr4/fw;->x5(Lf4/a;Ljava/lang/String;Lr4/fb0;I)Lr4/yh0;

    move-result-object p1

    return-object p1
.end method
