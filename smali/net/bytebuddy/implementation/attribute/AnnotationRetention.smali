.class public final enum Lnet/bytebuddy/implementation/attribute/AnnotationRetention;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

.field public static final enum DISABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

.field public static final enum ENABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;


# instance fields
.field private final enabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->ENABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    const-string v4, "DISABLED"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->DISABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->$VALUES:[Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->enabled:Z

    return-void
.end method

.method public static of(Z)Lnet/bytebuddy/implementation/attribute/AnnotationRetention;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->ENABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->DISABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationRetention;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/AnnotationRetention;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->$VALUES:[Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->enabled:Z

    return v0
.end method
