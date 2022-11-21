.class Lcom/android/dx/command/dexer/Main$ClassParserTask;
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
    name = "ClassParserTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lp1/f;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public final synthetic c:Lcom/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$ClassParserTask;->c:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/dx/command/dexer/Main$ClassParserTask;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dx/command/dexer/Main$ClassParserTask;->b:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLcom/android/dx/command/dexer/Main$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/command/dexer/Main$ClassParserTask;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$ClassParserTask;->call()Lp1/f;

    move-result-object v0

    return-object v0
.end method

.method public call()Lp1/f;
    .locals 3

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$ClassParserTask;->c:Lcom/android/dx/command/dexer/Main;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassParserTask;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassParserTask;->b:[B

    invoke-static {v0, v1, v2}, Lcom/android/dx/command/dexer/Main;->g(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[B)Lp1/f;

    move-result-object v0

    return-object v0
.end method
