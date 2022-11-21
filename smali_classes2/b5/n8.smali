.class public final Lb5/n8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb5/l8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/l8<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Lb5/l8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/l8<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb5/m8;

    invoke-direct {v0}, Lb5/m8;-><init>()V

    sput-object v0, Lb5/n8;->a:Lb5/l8;

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/l8;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lb5/n8;->b:Lb5/l8;

    return-void
.end method

.method public static a()Lb5/l8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb5/l8<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lb5/n8;->b:Lb5/l8;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Lb5/l8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb5/l8<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lb5/n8;->a:Lb5/l8;

    return-object v0
.end method
