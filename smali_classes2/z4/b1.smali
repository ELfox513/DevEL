.class public abstract Lz4/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/b1;

.field public static final b:Lz4/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz4/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz4/d1;-><init>(Lz4/c1;)V

    sput-object v0, Lz4/b1;->a:Lz4/b1;

    new-instance v0, Lz4/e1;

    invoke-direct {v0, v1}, Lz4/e1;-><init>(Lz4/c1;)V

    sput-object v0, Lz4/b1;->b:Lz4/b1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz4/c1;)V
    .locals 0

    invoke-direct {p0}, Lz4/b1;-><init>()V

    return-void
.end method

.method public static c()Lz4/b1;
    .locals 1

    sget-object v0, Lz4/b1;->a:Lz4/b1;

    return-object v0
.end method

.method public static d()Lz4/b1;
    .locals 1

    sget-object v0, Lz4/b1;->b:Lz4/b1;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
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
