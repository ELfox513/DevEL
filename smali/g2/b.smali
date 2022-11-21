.class public final synthetic Lg2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/a;


# instance fields
.field public final synthetic a:Lg2/d;


# direct methods
.method public synthetic constructor <init>(Lg2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/b;->a:Lg2/d;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg2/b;->a:Lg2/d;

    check-cast p1, Lg2/d$a;

    invoke-static {v0, p1}, Lg2/d;->d(Lg2/d;Lg2/d$a;)Lg2/d$b;

    move-result-object p1

    return-object p1
.end method
