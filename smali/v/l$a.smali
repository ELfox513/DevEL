.class public Lv/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/l;->h([La0/f$b;I)La0/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv/l$c<",
        "La0/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv/l;


# direct methods
.method public constructor <init>(Lv/l;)V
    .locals 0

    iput-object p1, p0, Lv/l$a;->a:Lv/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La0/f$b;

    invoke-virtual {p0, p1}, Lv/l$a;->c(La0/f$b;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, La0/f$b;

    invoke-virtual {p0, p1}, Lv/l$a;->d(La0/f$b;)Z

    move-result p1

    return p1
.end method

.method public c(La0/f$b;)I
    .locals 0

    invoke-virtual {p1}, La0/f$b;->e()I

    move-result p1

    return p1
.end method

.method public d(La0/f$b;)Z
    .locals 0

    invoke-virtual {p1}, La0/f$b;->f()Z

    move-result p1

    return p1
.end method
