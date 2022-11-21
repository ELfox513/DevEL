.class public final enum Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unresolved"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;",
        ">;",
        "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

.field public static final enum INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->$VALUES:[Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->$VALUES:[Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    return-object v0
.end method


# virtual methods
.method public getArgument()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get the argument for an unresolved parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
