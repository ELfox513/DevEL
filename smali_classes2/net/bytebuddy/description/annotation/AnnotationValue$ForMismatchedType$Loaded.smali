.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase$ForUnresolvedProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase$ForUnresolvedProperty<",
        "TW;>;"
    }
.end annotation


# instance fields
.field private final property:Ljava/lang/reflect/Method;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase$ForUnresolvedProperty;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;->property:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public resolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    new-instance v0, Ljava/lang/annotation/AnnotationTypeMismatchException;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;->property:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/* Warning type mismatch! \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
