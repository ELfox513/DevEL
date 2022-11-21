.class public abstract Lo2/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lo2/g$b;
.end method

.method public abstract b(J)Lo2/g$b$a;
.end method

.method public abstract c(Ljava/util/Set;)Lo2/g$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo2/g$c;",
            ">;)",
            "Lo2/g$b$a;"
        }
    .end annotation
.end method

.method public abstract d(J)Lo2/g$b$a;
.end method
