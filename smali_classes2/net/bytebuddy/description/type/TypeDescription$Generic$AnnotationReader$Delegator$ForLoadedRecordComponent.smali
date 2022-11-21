.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedRecordComponent;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedRecordComponent"
.end annotation


# instance fields
.field private final recordComponent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedRecordComponent;->recordComponent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedRecordComponent;->recordComponent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;->getAnnotatedType(Ljava/lang/Object;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    return-object v0
.end method
