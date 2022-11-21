.class public final synthetic Lm7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:Lm7/e;

.field public final synthetic b:Lj5/i;

.field public final synthetic c:Lj5/i;


# direct methods
.method public synthetic constructor <init>(Lm7/e;Lj5/i;Lj5/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/c;->a:Lm7/e;

    iput-object p2, p0, Lm7/c;->b:Lj5/i;

    iput-object p3, p0, Lm7/c;->c:Lj5/i;

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lm7/c;->a:Lm7/e;

    iget-object v1, p0, Lm7/c;->b:Lj5/i;

    iget-object v2, p0, Lm7/c;->c:Lj5/i;

    invoke-static {v0, v1, v2, p1}, Lm7/e;->c(Lm7/e;Lj5/i;Lj5/i;Lj5/i;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
