.class public Lcom/google/android/gms/drive/widget/DataBufferAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final Fj:I

.field private Fk:I

.field private final Fl:I

.field private final Fm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final Fn:Landroid/view/LayoutInflater;

.field private Fo:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/data/DataBuffer<TT;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fo:Z

    iput-object p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fk:I

    iput p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fj:I

    iput p3, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fl:I

    iput-object p4, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fm:Ljava/util/List;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fn:Landroid/view/LayoutInflater;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;II[Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    .local p4, "buffers":[Lcom/google/android/gms/common/data/DataBuffer;, "[Lcom/google/android/gms/common/data/DataBuffer<TT;>;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/data/DataBuffer<TT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    .local p3, "buffers":[Lcom/google/android/gms/common/data/DataBuffer;, "[Lcom/google/android/gms/common/data/DataBuffer<TT;>;"
    const/4 v0, 0x0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fn:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fl:I

    if-nez v1, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fl:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "DataBufferAdapter"

    const-string v3, "You must supply a resource ID for a TextView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DataBufferAdapter requires the resource ID to be a TextView"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public append(Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    .local p1, "buffer":Lcom/google/android/gms/common/data/DataBuffer;, "Lcom/google/android/gms/common/data/DataBuffer<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fk:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/CursorIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, p1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v3

    if-gt v3, v1, :cond_0

    sub-int v0, v1, v3

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_1
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fj:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fo:Z

    return-void
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .param p1, "resource"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    iput p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fk:I

    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .param p1, "notifyOnChange"    # Z

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/widget/DataBufferAdapter;, "Lcom/google/android/gms/drive/widget/DataBufferAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->Fo:Z

    return-void
.end method
