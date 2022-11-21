.class public final Lr4/pu;
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

.field public final synthetic e:Lr4/wu;


# direct methods
.method public constructor <init>(Lr4/wu;Landroid/content/Context;Lr4/yt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr4/pu;->e:Lr4/wu;

    iput-object p2, p0, Lr4/pu;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/pu;->c:Lr4/yt;

    iput-object p4, p0, Lr4/pu;->d:Ljava/lang/String;

    invoke-direct {p0}, Lr4/xu;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/pu;->b:Landroid/content/Context;

    const-string v1, "search"

    invoke-static {v0, v1}, Lr4/wu;->g(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lr4/my;

    invoke-direct {v0}, Lr4/my;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/pu;->e:Lr4/wu;

    invoke-static {v0}, Lr4/wu;->a(Lr4/wu;)Lr4/st;

    move-result-object v1

    iget-object v2, p0, Lr4/pu;->b:Landroid/content/Context;

    iget-object v3, p0, Lr4/pu;->c:Lr4/yt;

    iget-object v4, p0, Lr4/pu;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lr4/st;->c(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/fw;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/pu;->b:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    iget-object v1, p0, Lr4/pu;->c:Lr4/yt;

    iget-object v2, p0, Lr4/pu;->d:Ljava/lang/String;

    const v3, 0xcbe6bb0

    invoke-interface {p1, v0, v1, v2, v3}, Lr4/fw;->I3(Lf4/a;Lr4/yt;Ljava/lang/String;I)Lr4/vv;

    move-result-object p1

    return-object p1
.end method
