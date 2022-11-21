.class public final Lr5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq5/a$b;

.field public final b:Lf5/a;

.field public final c:Lr5/e;


# direct methods
.method public constructor <init>(Lf5/a;Lq5/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr5/f;->a:Lq5/a$b;

    iput-object p1, p0, Lr5/f;->b:Lf5/a;

    new-instance p2, Lr5/e;

    invoke-direct {p2, p0}, Lr5/e;-><init>(Lr5/f;)V

    iput-object p2, p0, Lr5/f;->c:Lr5/e;

    invoke-virtual {p1, p2}, Lf5/a;->q(Lf5/a$a;)V

    return-void
.end method

.method public static bridge synthetic a(Lr5/f;)Lq5/a$b;
    .locals 0

    iget-object p0, p0, Lr5/f;->a:Lq5/a$b;

    return-object p0
.end method
