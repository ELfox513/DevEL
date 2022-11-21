.class public abstract Lo7/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/i0$c;,
        Lo7/i0$b;
    }
.end annotation


# static fields
.field public static final a:Lo7/i0;

.field public static final b:Lo7/i0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo7/i0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo7/i0$b;-><init>(Lo7/i0$a;)V

    sput-object v0, Lo7/i0;->a:Lo7/i0;

    new-instance v0, Lo7/i0$c;

    invoke-direct {v0, v1}, Lo7/i0$c;-><init>(Lo7/i0$a;)V

    sput-object v0, Lo7/i0;->b:Lo7/i0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo7/i0$a;)V
    .locals 0

    invoke-direct {p0}, Lo7/i0;-><init>()V

    return-void
.end method

.method public static a()Lo7/i0;
    .locals 1

    sget-object v0, Lo7/i0;->a:Lo7/i0;

    return-object v0
.end method

.method public static b()Lo7/i0;
    .locals 1

    sget-object v0, Lo7/i0;->b:Lo7/i0;

    return-object v0
.end method


# virtual methods
.method public abstract c(Ljava/lang/Object;J)V
.end method

.method public abstract d(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method
