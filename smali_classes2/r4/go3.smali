.class public final Lr4/go3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/fo3;

.field public static final b:Lr4/fo3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/fo3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lr4/go3;->a:Lr4/fo3;

    new-instance v0, Lr4/fo3;

    invoke-direct {v0}, Lr4/fo3;-><init>()V

    sput-object v0, Lr4/go3;->b:Lr4/fo3;

    return-void
.end method

.method public static a()Lr4/fo3;
    .locals 1

    sget-object v0, Lr4/go3;->a:Lr4/fo3;

    return-object v0
.end method

.method public static b()Lr4/fo3;
    .locals 1

    sget-object v0, Lr4/go3;->b:Lr4/fo3;

    return-object v0
.end method
