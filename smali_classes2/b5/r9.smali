.class public abstract Lb5/r9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb5/r9;

.field public static final b:Lb5/r9;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/n9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb5/n9;-><init>(Lb5/m9;)V

    sput-object v0, Lb5/r9;->a:Lb5/r9;

    new-instance v0, Lb5/p9;

    invoke-direct {v0, v1}, Lb5/p9;-><init>(Lb5/o9;)V

    sput-object v0, Lb5/r9;->b:Lb5/r9;

    return-void
.end method

.method public synthetic constructor <init>(Lb5/q9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lb5/r9;
    .locals 1

    sget-object v0, Lb5/r9;->a:Lb5/r9;

    return-object v0
.end method

.method public static d()Lb5/r9;
    .locals 1

    sget-object v0, Lb5/r9;->b:Lb5/r9;

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
