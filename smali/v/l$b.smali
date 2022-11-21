.class public Lv/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/l;->f(Lu/d$b;I)Lu/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv/l$c<",
        "Lu/d$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv/l;


# direct methods
.method public constructor <init>(Lv/l;)V
    .locals 0

    iput-object p1, p0, Lv/l$b;->a:Lv/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lu/d$c;

    invoke-virtual {p0, p1}, Lv/l$b;->c(Lu/d$c;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lu/d$c;

    invoke-virtual {p0, p1}, Lv/l$b;->d(Lu/d$c;)Z

    move-result p1

    return p1
.end method

.method public c(Lu/d$c;)I
    .locals 0

    invoke-virtual {p1}, Lu/d$c;->e()I

    move-result p1

    return p1
.end method

.method public d(Lu/d$c;)Z
    .locals 0

    invoke-virtual {p1}, Lu/d$c;->f()Z

    move-result p1

    return p1
.end method
