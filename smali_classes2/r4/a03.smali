.class public final Lr4/a03;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/xz2;

.field public static volatile b:Lr4/xz2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/yz2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/yz2;-><init>(Lr4/zz2;)V

    sput-object v0, Lr4/a03;->a:Lr4/xz2;

    sput-object v0, Lr4/a03;->b:Lr4/xz2;

    return-void
.end method

.method public static a()Lr4/xz2;
    .locals 1

    sget-object v0, Lr4/a03;->b:Lr4/xz2;

    return-object v0
.end method
