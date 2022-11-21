.class public final enum Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

.field private static final EXTENSION:Ljava/lang/String; = ".data"

.field public static final enum INSTANCE:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

.field private static final NO_FLAGS:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    invoke-virtual {v0}, [Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public loadClass(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Class;
    .locals 0
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexFile;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-interface {p3}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public loadDex(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/RandomString;)Ldalvik/system/DexFile;
    .locals 1
    .param p3    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".data"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object p1

    return-object p1
.end method
