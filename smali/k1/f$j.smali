.class public final Lk1/f$j;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk1/f;


# direct methods
.method public constructor <init>(Lk1/f;)V
    .locals 0

    iput-object p1, p0, Lk1/f$j;->a:Lk1/f;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk1/f;Lk1/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lk1/f$j;-><init>(Lk1/f;)V

    return-void
.end method


# virtual methods
.method public d(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lk1/f$j;->a:Lk1/f;

    invoke-static {v0}, Lk1/f;->c(Lk1/f;)Lk1/f$h;

    move-result-object v0

    iget-object v1, p0, Lk1/f$j;->a:Lk1/f;

    invoke-virtual {v1, p1}, Lk1/f;->i(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lk1/f$h;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lk1/f$j;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lk1/f$j;->a:Lk1/f;

    invoke-static {v0}, Lk1/f;->a(Lk1/f;)Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->c:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->b:I

    return v0
.end method
