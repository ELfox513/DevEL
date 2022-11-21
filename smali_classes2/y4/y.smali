.class public final Ly4/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/f$b;
.implements Lk5/f$a;


# instance fields
.field public final a:Lk5/f$b;

.field public final b:Lk5/f$a;


# direct methods
.method public synthetic constructor <init>(Lk5/f$b;Lk5/f$a;Ly4/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/y;->a:Lk5/f$b;

    iput-object p2, p0, Ly4/y;->b:Lk5/f$a;

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)V
    .locals 1

    iget-object v0, p0, Ly4/y;->b:Lk5/f$a;

    invoke-interface {v0, p1}, Lk5/f$a;->a(Lk5/e;)V

    return-void
.end method

.method public final b(Lk5/b;)V
    .locals 1

    iget-object v0, p0, Ly4/y;->a:Lk5/f$b;

    invoke-interface {v0, p1}, Lk5/f$b;->b(Lk5/b;)V

    return-void
.end method
