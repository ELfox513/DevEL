.class Lcom/android/dx/command/dexer/Main$NotFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotFilter"
.end annotation


# instance fields
.field private final filter:Lp1/d$e;


# direct methods
.method private constructor <init>(Lp1/d$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$NotFilter;->filter:Lp1/d$e;

    return-void
.end method

.method public synthetic constructor <init>(Lp1/d$e;Lcom/android/dx/command/dexer/Main$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/command/dexer/Main$NotFilter;-><init>(Lp1/d$e;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$NotFilter;->filter:Lp1/d$e;

    invoke-interface {v0, p1}, Lp1/d$e;->accept(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
