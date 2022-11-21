.class public final synthetic Ls5/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/a$a;


# instance fields
.field public final synthetic a:Lq6/a$a;

.field public final synthetic b:Lq6/a$a;


# direct methods
.method public synthetic constructor <init>(Lq6/a$a;Lq6/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/b0;->a:Lq6/a$a;

    iput-object p2, p0, Ls5/b0;->b:Lq6/a$a;

    return-void
.end method


# virtual methods
.method public final a(Lq6/b;)V
    .locals 2

    iget-object v0, p0, Ls5/b0;->a:Lq6/a$a;

    iget-object v1, p0, Ls5/b0;->b:Lq6/a$a;

    invoke-static {v0, v1, p1}, Ls5/c0;->d(Lq6/a$a;Lq6/a$a;Lq6/b;)V

    return-void
.end method
