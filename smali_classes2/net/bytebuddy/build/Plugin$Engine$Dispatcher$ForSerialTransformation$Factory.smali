.class public final enum Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;",
        ">;",
        "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;->INSTANCE:Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;

    invoke-direct {v0, p1, p2, p3, p4}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    return-object v0
.end method
