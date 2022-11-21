.class public final Lr4/mu;
.super Lr4/xu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/xu<",
        "Lr4/ke0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lr4/fb0;


# direct methods
.method public constructor <init>(Lr4/wu;Landroid/content/Context;Lr4/fb0;)V
    .locals 0

    iput-object p2, p0, Lr4/mu;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/mu;->c:Lr4/fb0;

    invoke-direct {p0}, Lr4/xu;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/mu;->b:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lr4/mu;->b:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl"

    sget-object v3, Lr4/lu;->a:Lr4/em0;

    invoke-static {v1, v2, v3}, Lr4/gm0;->a(Landroid/content/Context;Ljava/lang/String;Lr4/em0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ne0;

    iget-object v2, p0, Lr4/mu;->c:Lr4/fb0;

    const v3, 0xcbe6bb0

    invoke-interface {v1, v0, v2, v3}, Lr4/ne0;->Q0(Lf4/a;Lr4/fb0;I)Lr4/ke0;

    move-result-object v0
    :try_end_0
    .catch Lr4/fm0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic c(Lr4/fw;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/mu;->b:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    iget-object v1, p0, Lr4/mu;->c:Lr4/fb0;

    const v2, 0xcbe6bb0

    invoke-interface {p1, v0, v1, v2}, Lr4/fw;->O3(Lf4/a;Lr4/fb0;I)Lr4/ke0;

    move-result-object p1

    return-object p1
.end method
