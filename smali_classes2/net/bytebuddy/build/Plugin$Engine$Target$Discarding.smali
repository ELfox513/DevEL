.class public final enum Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Target;
.implements Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Discarding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;",
        ">;",
        "Lnet/bytebuddy/build/Plugin$Engine$Target;",
        "Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

.field public static final enum INSTANCE:Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;->INSTANCE:Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/Plugin$Engine$Target$Discarding;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public retain(Lnet/bytebuddy/build/Plugin$Engine$Source$Element;)V
    .locals 0

    return-void
.end method

.method public store(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public write(Ljava/util/jar/Manifest;)Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;
    .locals 0
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    return-object p0
.end method
