.class public final enum Lnet/bytebuddy/description/annotation/AnnotationValue$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$State;

.field public static final enum RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

.field public static final enum UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

.field public static final enum UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    const-string v3, "UNRESOLVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    new-instance v3, Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    const-string v5, "RESOLVED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$State;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationValue$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method


# virtual methods
.method public isDefined()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResolved()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
