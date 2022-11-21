.class public final Lk4/l$b;
.super Lk4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj5/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/j<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lk4/a;-><init>()V

    iput-object p1, p0, Lk4/l$b;->a:Lj5/j;

    return-void
.end method


# virtual methods
.method public final o3(ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p2, 0xbbb

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lk4/l$b;->a:Lj5/j;

    invoke-static {p2, p1}, Lk4/l;->t0(Lj5/j;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lk4/l$b;->a:Lj5/j;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lj5/j;->c(Ljava/lang/Object;)V

    return-void
.end method
