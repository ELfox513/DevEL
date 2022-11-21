.class Lcom/android/dx/command/dexer/Main$MainDexListFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainDexListFilter"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/android/dx/command/dexer/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$MainDexListFilter;->a:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/dx/command/dexer/Main;Lcom/android/dx/command/dexer/Main$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/command/dexer/Main$MainDexListFilter;-><init>(Lcom/android/dx/command/dexer/Main;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/dx/command/dexer/Main;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$MainDexListFilter;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->a(Lcom/android/dx/command/dexer/Main;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
