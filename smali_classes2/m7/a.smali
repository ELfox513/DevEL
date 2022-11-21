.class public final synthetic Lm7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/h;


# instance fields
.field public final synthetic a:Lm7/e;


# direct methods
.method public synthetic constructor <init>(Lm7/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/a;->a:Lm7/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lj5/i;
    .locals 1

    iget-object v0, p0, Lm7/a;->a:Lm7/e;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lm7/e;->b(Lm7/e;Ljava/lang/Void;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
