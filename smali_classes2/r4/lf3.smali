.class public final Lr4/lf3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/sm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/sm3<",
            "Lr4/lf3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/kf3;

    invoke-direct {v0}, Lr4/kf3;-><init>()V

    sput-object v0, Lr4/lf3;->a:Lr4/sm3;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x2

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
