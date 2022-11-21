.class public interface abstract Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NamingStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$SuffixingRandom;,
        Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;,
        Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Enumerating;
    }
.end annotation


# virtual methods
.method public abstract name(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Ljava/lang/String;
.end method
