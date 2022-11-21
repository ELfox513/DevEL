.class Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassTranslatorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/dx/dex/file/ClassDefItem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Lp1/f;

.field public final synthetic d:Lcom/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLp1/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;->d:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;->b:[B

    iput-object p4, p0, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;->c:Lp1/f;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLp1/f;Lcom/android/dx/command/dexer/Main$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLp1/f;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/dx/dex/file/ClassDefItem;
    .locals 3

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;->d:Lcom/android/dx/command/dexer/Main;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;->b:[B

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;->c:Lp1/f;

    invoke-static {v0, v1, v2}, Lcom/android/dx/command/dexer/Main;->r(Lcom/android/dx/command/dexer/Main;[BLp1/f;)Lcom/android/dx/dex/file/ClassDefItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;->call()Lcom/android/dx/dex/file/ClassDefItem;

    move-result-object v0

    return-object v0
.end method
