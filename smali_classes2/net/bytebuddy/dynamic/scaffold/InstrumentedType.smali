.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Frozen;,
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;,
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;,
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;,
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    }
.end annotation


# virtual methods
.method public abstract getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.end method

.method public abstract getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
.end method

.method public abstract validated()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract withAnnotations(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;"
        }
    .end annotation
.end method

.method public abstract withAnonymousClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withAuxiliaryField(Lnet/bytebuddy/description/field/FieldDescription$Token;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withDeclaredTypes(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
.end method

.method public abstract withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withEnclosingType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withLocalClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withModifiers(I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withNestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withNestMembers(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withPermittedSubclasses(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .param p1    # Lnet/bytebuddy/description/type/TypeList;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
.end method

.method public abstract withRecord(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withRecordComponent(Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withTypeVariable(Lnet/bytebuddy/description/type/TypeVariableToken;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method
