.class public final Lr4/yo3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/wo3;

    invoke-direct {v0}, Lr4/wo3;-><init>()V

    sput-object v0, Lr4/yo3;->a:Ljava/util/Iterator;

    new-instance v0, Lr4/xo3;

    invoke-direct {v0}, Lr4/xo3;-><init>()V

    sput-object v0, Lr4/yo3;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public static synthetic a()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lr4/yo3;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public static b()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lr4/yo3;->b:Ljava/lang/Iterable;

    return-object v0
.end method
