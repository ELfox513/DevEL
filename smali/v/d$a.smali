.class public Lv/d$a;
.super La0/f$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lu/h$c;


# direct methods
.method public constructor <init>(Lu/h$c;)V
    .locals 0

    invoke-direct {p0}, La0/f$c;-><init>()V

    iput-object p1, p0, Lv/d$a;->a:Lu/h$c;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lv/d$a;->a:Lu/h$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lu/h$c;->d(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lv/d$a;->a:Lu/h$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lu/h$c;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
