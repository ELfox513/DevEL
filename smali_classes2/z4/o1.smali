.class public final Lz4/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/m1;

.field public static final b:Lz4/m1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lz4/o1;->c()Lz4/m1;

    move-result-object v0

    sput-object v0, Lz4/o1;->a:Lz4/m1;

    new-instance v0, Lz4/n1;

    invoke-direct {v0}, Lz4/n1;-><init>()V

    sput-object v0, Lz4/o1;->b:Lz4/m1;

    return-void
.end method

.method public static a()Lz4/m1;
    .locals 1

    sget-object v0, Lz4/o1;->a:Lz4/m1;

    return-object v0
.end method

.method public static b()Lz4/m1;
    .locals 1

    sget-object v0, Lz4/o1;->b:Lz4/m1;

    return-object v0
.end method

.method public static c()Lz4/m1;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
