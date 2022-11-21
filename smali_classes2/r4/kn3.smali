.class public abstract Lr4/kn3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/kn3;

.field public static final b:Lr4/kn3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/hn3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/hn3;-><init>(Lr4/jn3;)V

    sput-object v0, Lr4/kn3;->a:Lr4/kn3;

    new-instance v0, Lr4/in3;

    invoke-direct {v0, v1}, Lr4/in3;-><init>(Lr4/jn3;)V

    sput-object v0, Lr4/kn3;->b:Lr4/kn3;

    return-void
.end method

.method public synthetic constructor <init>(Lr4/jn3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lr4/kn3;
    .locals 1

    sget-object v0, Lr4/kn3;->a:Lr4/kn3;

    return-object v0
.end method

.method public static e()Lr4/kn3;
    .locals 1

    sget-object v0, Lr4/kn3;->b:Lr4/kn3;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)Ljava/util/List;
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

.method public abstract b(Ljava/lang/Object;J)V
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;J)V
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
