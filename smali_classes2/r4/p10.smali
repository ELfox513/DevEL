.class public final Lr4/p10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:pan:experiment_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/p10;->a:Lr4/u00;

    return-void
.end method
