.class public final Lr4/yu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/zg0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yu0;->a:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/yu0;->b()Lr4/zg0;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/zg0;
    .locals 4

    iget-object v0, p0, Lr4/yu0;->a:Lr4/is3;

    check-cast v0, Lr4/gu0;

    invoke-virtual {v0}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lz2/t;->q()Lr4/u90;

    move-result-object v1

    invoke-static {}, Lr4/im0;->X0()Lr4/im0;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lr4/u90;->a(Landroid/content/Context;Lr4/im0;)Lr4/ea0;

    move-result-object v1

    sget-object v2, Lr4/ba0;->b:Lr4/y90;

    const-string v3, "google.afma.request.getAdDictionary"

    invoke-virtual {v1, v3, v2, v2}, Lr4/ea0;->a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/t90;

    invoke-static {}, Lz2/t;->q()Lr4/u90;

    move-result-object v1

    invoke-static {}, Lr4/im0;->X0()Lr4/im0;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lr4/u90;->a(Landroid/content/Context;Lr4/im0;)Lr4/ea0;

    move-result-object v1

    const-string v3, "google.afma.sdkConstants.getSdkConstants"

    invoke-virtual {v1, v3, v2, v2}, Lr4/ea0;->a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/t90;

    move-result-object v1

    new-instance v2, Lr4/yg0;

    invoke-direct {v2, v0, v1}, Lr4/yg0;-><init>(Landroid/content/Context;Lr4/t90;)V

    return-object v2
.end method
