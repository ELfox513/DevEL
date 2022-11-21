.class public final Lr4/o5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/s33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/s33<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lr4/s5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lr4/s33;->a()Lr4/s33;

    move-result-object p1

    iput-object p1, p0, Lr4/o5;->a:Lr4/s33;

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object p1

    iput-object p1, p0, Lr4/o5;->b:Lr4/o33;

    return-void
.end method
