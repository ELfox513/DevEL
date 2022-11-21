.class public Lk7/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/a0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo7/a0$d<",
        "Lk7/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lo7/a0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lk7/d$a;->b(I)Lk7/d;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lk7/d;
    .locals 0

    invoke-static {p1}, Lk7/d;->c(I)Lk7/d;

    move-result-object p1

    return-object p1
.end method
