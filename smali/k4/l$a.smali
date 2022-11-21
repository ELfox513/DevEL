.class public Lk4/l$a;
.super Lk4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk4/a;"
    }
.end annotation


# instance fields
.field public final a:Lv3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lk4/a;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/d;

    iput-object p1, p0, Lk4/l$a;->a:Lv3/d;

    return-void
.end method


# virtual methods
.method public final o0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lk4/l$a;->a:Lv3/d;

    invoke-interface {v0, p1}, Lv3/d;->b(Ljava/lang/Object;)V

    return-void
.end method
