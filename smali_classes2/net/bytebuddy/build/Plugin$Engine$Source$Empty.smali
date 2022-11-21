.class public final enum Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Source;
.implements Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;",
        ">;",
        "Lnet/bytebuddy/build/Plugin$Engine$Source;",
        "Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

.field public static final enum INSTANCE:Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;->INSTANCE:Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/Plugin$Engine$Source$Empty;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getClassFileLocator()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;->NO_MANIFEST:Ljava/util/jar/Manifest;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read()Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;
    .locals 0

    return-object p0
.end method
