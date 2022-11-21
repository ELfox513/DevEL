.class public final enum Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
.implements Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForInstrumentedRecordComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;",
        "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;->INSTANCE:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;->$VALUES:[Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;->$VALUES:[Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/description/type/RecordComponentDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;

    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnRecordComponent;

    invoke-direct {v1, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnRecordComponent;-><init>(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;)V

    invoke-interface {p2}, Lnet/bytebuddy/description/type/RecordComponentDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-static {v0, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofFieldType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {p1, v0, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
    .locals 0

    return-object p0
.end method
